
from flask import Flask,render_template,request,url_for,session,redirect
from flaskext.mysql import MySQL
import pymysql
import os
from werkzeug.utils import secure_filename

app = Flask(__name__)
app.secret_key ="Cairoders_Ednalen" 

mysql=MySQL()
UPLOAD_FOLDER = 'static/upload/'



#Mysql Config
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] =''
app.config['MYSQL_DATABASE_DB']='school'
app.config['MYSQL_DATABASE-USER']='localhost'



app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['UPLOAD_FOLDER'] = 'static/upload/'
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024

mysql.init_app(app)

ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

conn = mysql.connect()
cursor = conn.cursor(pymysql.cursors.DictCursor)
    
@app.route('/rf',methods=['POST','GET'])
def sreg():
    
    if request.method =='POST':
        name = request.form['name']
        fname = request.form['fname']
        bdy = request.form['bdy']
        gender = request.form['gender']
        email = request.form['email']
        password = request.form['password']
        Phone = request.form['Phone']
        clas = request.form['clas']
        Father_Occupation = request.form['Father_Occupation']
        blood_type = request.form['blood_type']

        cursor.execute('INSERT INTO stu_register(name,fname,bdy,gender,email,password,Phone,clas,Father_Occupation,blood_type) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)',(name,fname,bdy,gender,email,password,Phone,clas,Father_Occupation,blood_type))

        conn.commit()
        
    return render_template('stu_reg.html')




# ############################################  login session ##################################################

@app.route('/at_login', methods = ['GET', 'POST'])
def at_login():
    msg = ''
    if request.method == 'POST' and 'Username' in request.form and 'Password' in request.form:
        Username = request.form['Username']
        Password = request.form['Password']
        
        cursor.execute('SELECT * FROM admin WHERE Username = % s AND Password = % s', (Username, Password, ))
        account = cursor.fetchone()
        if account:
            session['loggedin'] = True
            session['id'] = account['id']
            session['Username'] = account['Username']
            msg = 'Logged in successfully !'
            # return render_template('home.html', msg = msg)
            # return render_template('dashboard.html')
            return redirect(url_for('admin_dashbord'))
        else:
            msg = 'Incorrect email / password !'

########################################  Teacher Login section ####################################################################


    if request.method == 'POST' and 'Username' in request.form and 'Password' in request.form:
        Username = request.form['Username']
        Password = request.form['Password']
        
        cursor.execute('SELECT * FROM all_teachers WHERE Username = % s AND Password = % s', (Username, Password, ))
        account = cursor.fetchone()
        if account:
            session['loggedin'] = True
            session['id'] = account['id']
            session['Username'] = account['Username']
            msg = 'Logged in successfully !'
            # return render_template('home.html', msg = msg)
            # return render_template('dashboard.html')
            return redirect(url_for('teacher_dashboard'))
        else:
            msg = 'Incorrect email / password !'
    return render_template('at_login.html',msg=msg)


############################################### student login     ###############################################



############################################### Studentt Login Section #######################################################


@app.route('/login')
def slogin():

    return render_template('login.html')


############################################### log out section   ######################################################

@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('id', None)
    session.pop('username', None)
    return redirect(url_for('at_login'))



@app.route('/at_login')
def login():
    return render_template("at_login.html")




################################################ library secttion  ################################################################

@app.route('/admin_library',methods=['POST','GET'])
def admin_library():

    cursor.execute("SELECT * FROM add_library")
    lib = cursor.fetchone()

    if request.method == 'POST':
        
        Book_Name = request.form['Book_Name']
        Book_ID = request.form['Book_ID']
        Subject = request.form['Subject']
        Author = request.form['Author']
        Publish_Date = request.form['Publish_Date']
        Rac_Number = request.form['Rac_Number']
        Title = request.form['Title']


        cursor.execute('INSERT INTO add_library(Book_Name,Book_ID,Subject,Author,Publish_Date,Rac_Number,Title) VALUES (%s,%s,%s,%s,%s,%s,%s)',(Book_Name,Book_ID,Subject,Author,Publish_Date,Rac_Number,Title))
        conn.commit()
   
    return render_template('admin_library.html',lib = lib)


@app.route('/admin_library_issue')
def admin_library_issue():
    # cursor.execute('SELECT * FROM all_teachers')
    # tech = cursor.fetchall()

    return render_template('admin_library_issue.html')

@app.route('/admin_library_receive')
def admin_library_receive():
    # cursor.execute('SELECT * FROM all_teachers')
    # tech = cursor.fetchall()

    return render_template('admin_library_receive.html')


# ################################# Library Sections End Here #########################################################


# ######################## ################### student addmission section ######################################################

@app.route('/a',methods=['POST','GET'])
def addmission_page():

    if request.method == 'POST':

        fullname = request.form['fullname']
        email = request.form['email']
        dob = request.form['dob']
        contact_no = request.form['contact_no']
        adharcardno = request.form['adharcardno']
        gender = request.form['gender']

        student_photo= request.files.getlist('student_photo[]')
        for files in student_photo :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))

        adhar_photo= request.files.getlist('adhar_photo[]')
        for files in adhar_photo :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))


        Caste = request.form['Caste']

        caste_c = request.files.getlist('caste_c[]')
        for files in caste_c :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))

        p_address = request.form['p_address']
        c_address = request.form['c_address']
        State = request.form['State']

        Disrtrict = request.form['Disrtrict']

        p_cartifcate = request.files.getlist('p_cartifcate[]')
        for files in p_cartifcate :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        
        b_cartifcate = request.files.getlist('b_cartifcate[]')
        for files in b_cartifcate :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        
        password = request.form['password']
        c_password = request.form['c_password']
        f_name = request.form['f_name']
        m_name = request.form['m_name']
        p_no = request.form['p_no']
        m_no = request.form['m_no']
        adhar = request.form['adhar']
        profession = request.form['profession']


        cursor.execute('INSERT INTO addmission (fullname,email,dob,contact_no,adharcardno,gender,student_photo,adhar_photo,Caste,caste_c,p_address,c_address,State,Disrtrict,p_cartifcate,b_cartifcate,password,c_password,f_name,m_name,p_no,m_no,adhar,profession ) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)',(fullname,email,dob,contact_no,adharcardno,gender,student_photo,adhar_photo,Caste,caste_c,p_address,c_address,State,Disrtrict,p_cartifcate,b_cartifcate,password,c_password,f_name,m_name,p_no,m_no,adhar,profession))
        
        conn.commit()




    return render_template('addmission_page.html')


# ######################################### addmission section ends here ################################################################



# Home page section strating from here

@app.route('/') 
def home():
    return render_template('index.html')


@app.route('/libraryrule')
def libraryrule():
    return render_template('libraryrule.html')


@app.route('/hostelrule')
def hostelrule():
    return render_template('hostelrule.html')


@app.route("/schoolrule")
def schoolrule():
    return render_template('schoolrule.html')


@app.route('/history')
def history():
    return render_template('history.html')


@app.route('/classroom')
def classroom():
    return render_template('classroom.html')


@app.route("/canteen")
def canteen():
    return render_template('canteen.html')




@app.route("/libraryroom")
def libraryroom():
    return render_template('libraryroom.html')


@app.route("/gallery")
def gallery():
    return render_template('gallary2.html')




@app.route("/principallist")
def principallist():
    return render_template('principallist.html')


@app.route("/info")
def info():
    return render_template('college-info.html')

@app.route("/admission")
def admission():
    return render_template('admission.html')



@app.route("/prequestions")
def prequestions():
    return render_template('prequestions.html')




@app.route("/classes")
def classes():
    return render_template('classes.html')



@app.route("/labrotory")
def lab():
    return render_template('lab.html')

@app.route("/curriculam")
def curriculam():
    return render_template('ca.html')




@app.route("/hostel")
def hostel():
    return render_template('hostel.html')


@app.route("/library")
def library():
    return render_template('lib.html')


@app.route("/indoor")
def indoor():
    return render_template('indoot.html')



@app.route("/result")
def result():
    return render_template('result.html')



@app.route("/resultlogin")
def resultlogin():
    return render_template('result2.html')


@app.route("/officestaff")
def schoolstaff():
    return render_template('schoolstaff.html')


@app.route("/syllabus")
def syllabus():
    return render_template('syllabus.html')

# Home section ends here


# admin contnts

@app.route("/upload")
def upload():
    return render_template('upload.html')



# ## Start admin dashboard Section ####
#  these are the dashboard sections

@app.route('/admin_dashboard')
def admin_dashbord():
    cursor.execute('SELECT COUNT(id) as id FROM all_teachers')
    se=cursor.fetchone()
    return render_template('admin_dashbord.html',se=se)

# this is all teachers dashboard page

@app.route('/admin_all_teachers')
def admin_all_teachers():
    cursor.execute('SELECT * FROM all_teachers')
    tech = cursor.fetchall()

    return render_template('admin_all_teachers.html',tech=tech)





  

# from here teacher dashoboard section starts


@app.route('/teacher_main')
def teacher_main():
    return render_template('teacher_main.html')

@app.route('/work_progress')
def work_progress():
    return render_template('work_progress.html')

@app.route('/teacher_dash_atteandance')
def teacher_dash_atteandance():
    return render_template('teacher_dash_atteandance.html')

@app.route('/home_work')
def home_work():
    return render_template('home_work.html')

@app.route('/notification')
def notification():
    return render_template('notification.html')

@app.route('/teacher_dashboard')
def teacher_dashboard():
    return render_template('teacher_dashboard.html')

# @app.route('/teacher_edit')
# def teacher_edit():
#     return render_template('teacher_edit.html')

@app.route('/teacher_quiz')
def teacher_quiz():
    return render_template('teacher_quiz.html')
    
# teacher dashboard end

################### adding teacher details by admin ######################

@app.route('/teachers',methods=['GET','POST'])
def teachers():


    if request.method =='POST':

        Full_Name = request.form['Full_Name']
        Qualification = request.form['Qualification']
        Expenses = request.form['Expenses']
        Email = request.form['Email']
        Phone_Number = request.form['Phone_Number']
        Address = request.form['Address']
        Date_of_Joining = request.form['Date_of_Joining']
        Username = request.form['Username']
        Password = request.form['Password']
        gender = request.form['gender']
        image= request.files.getlist('image[]')
        for files in image :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename)) 
        
                cursor.execute('INSERT INTO all_teachers(Full_Name,Qualification,Expenses,Email,Phone_Number,Address,Date_of_Joining,Username,Password,gender,image) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)',(Full_Name,Qualification,Expenses,Email,Phone_Number,Address,Date_of_Joining,Username,Password,gender,filename))
                conn.commit()  
        return redirect(url_for('admin_all_teachers'))
    return render_template('admin_all_teachers')

########################## Edit Teacher Details #########################

@app.route('/edit1/<id>',methods = ['POST','GET'])
def teacher_edit(id):
    cursor.execute('SELECT * FROM all_teachers WHERE id = %s',(id))
    data = cursor.fetchall()
    conn.commit()
    print(data[0])
    return render_template('teacher_edit.html', all_teachers = data[0])

############################################## Update details #######################

@app.route('/update1/<id>',methods=['POST'])
def update_teacher(id):

    if request.method == 'POST':

        Full_Name = request.form['Full_Name']
        Qualification = request.form['Qualification']
        Expenses = request.form['Expenses']
        Email = request.form['Email']
        Phone_Number = request.form['Phone_Number']
        Address = request.form['Address']
        Date_of_Joining = request.form['Date_of_Joining']
        Username = request.form['Username']
        Password = request.form['Password']
        # image= request.files.getlist('image[]')
        # for files in image :
        #     if files and allowed_file(files.filename):
        #         filename = secure_filename(files.filename)
        #         files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename)) 


        cursor.execute("""UPDATE all_teachers SET

            Full_Name = %s,
            Qualification = %s,
            Expenses = %s,
            Email = %s,
            Phone_Number = %s,
            Address = %s,
            Date_of_Joining = %s,
            Username = %s,
            Password = %s
            WHERE id = %s
            """,(Full_Name,Qualification,Expenses,Email,Phone_Number,Address,Date_of_Joining,Username,Password,id))
        conn.commit()
        return redirect(url_for('admin_all_teachers'))


# teacher row deleted section

@app.route('/delete1/<string:id>',methods=['GET','POST'])
def delete_teachers(id):
    cursor.execute('DELETE FROM all_teachers WHERE id={0}'.format(id))
    conn.commit()
    return redirect(url_for('admin_all_teachers'))




# this is all student dashboard page
# @app.route('/')




@app.route('/admin_all_student',methods=['POST','GET'])
def admin_all_student():

    if request.method =='POST':

        Name = request.form['Name']
        
        gender = request.form['gender']
        clas = request.form['clas']
        section = request.form['section']
        Email = request.form['Email']
        Phone_Number = request.form['Phone_Number']
        Address = request.form['Address']
        Addmission = request.form['Addmission']

        image= request.files.getlist('image[]')

        for files in image :
            if files and allowed_file(files.filename):
                filename = secure_filename(files.filename)
                files.save(os.path.join(app.config['UPLOAD_FOLDER'], filename)) 
        
                cursor.execute('INSERT INTO students(Name,gender,clas,section,Email,Phone_Number,Address,Addmission,image) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)',(Name,gender,clas,section,Email,Phone_Number,Address,Addmission,filename))

                conn.commit()  
        return redirect(url_for('admin_all_student'))
    return render_template('admin_all_student.html')



#student rows are deleted here

# @app.route('/delete2/<string:id>',methods=['GET','POST'])
# def delete_students(id):
#     cursor.execute('DELETE FROM all_students WHERE id={0}'.format(id))
#     conn.commit()
#     return redirect(url_for('admin_all_student'))





@app.route('/admin_transport',methods=['GET','POST'])
def admin_transport(): 
    cursor.execute('SELECT * FROM transport')
    tpt = cursor.fetchall()

    if request.method =='POST':
        Vehicle_No = request.form['Vehicle_No']
        Route_Name = request.form['Route_Name']
        Driver_Name = request.form['Driver_Name']
        Driver_License = request.form['Driver_License']
        Contact_Number = request.form['Contact_Number']
       

        cursor.execute('INSERT INTO transport(Vehicle_No,Route_Name,Driver_Name,Driver_License,Contact_Number)VALUES(%s,%s,%s,%s,%s)',(Vehicle_No,Route_Name,Driver_Name,Driver_License,Contact_Number))

        conn.commit()
    return render_template('admin_transport.html',tpt=tpt)


#transport rows are deleted here

@app.route('/delete3/<string:id>',methods=['GET','POST'])
def delete_transports(id):
    cursor.execute('DELETE FROM transport WHERE id={0}'.format(id))
    conn.commit()
    return redirect(url_for('admin_transport'))

@app.route('/admin_hostel')
def admin_hostel():
    if request.method =='POST':
        Hostel_Name = request.form['Hostel_Name']
        Room_no = request.form['Room_no']
        Room_Type = request.form['Room_Type']
        cursor.execute('INSERT INTO hostel(Hostel_Name,Room_no,Room_Type)VALUES(%s,%s,%s)',(Hostel_Name,Room_no,Room_Type))

        conn.commit()

    return render_template("admin_admin_hostel")

    

app.run(debug=True)