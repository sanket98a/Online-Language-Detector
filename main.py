from cgitb import html
from flask import Flask,render_template,request
import pickle

app=Flask(__name__)

count_vec=pickle.load(open("countvector.pkl","rb"))
model=pickle.load(open("Langmodel.pkl","rb"))
@app.route("/")
def Home():
    return render_template("Index1.html")

@app.route("/predict",methods=["POST","GET"])
def detect():
    data1=str(request.form.get("sentence"))
    print(data1)
    if data1!=" ":
        pun='!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~1203456789'
        list_pun=list(pun)
        for i in list_pun:
            if i in data1:
                resut=data1.replace(i,"")
                data1=resut
        result1=count_vec.transform([data1])   
        y_pred=model.predict(result1.A)
        final_output=y_pred[0]
        # print(final_output)
        return render_template("index1.html" ,prediction=f"Predicted Language ::: {final_output}")
    else:
        return render_template("index1.html" ,prediction1=f"Please Enter valid Text")





if  __name__=="__main__":
    app.run(debug=True,host="0.0.0.0",port=8000)
