from app import db 

class User(db.Model):
    id = db.Column(db.Integer , primary_key=True)

    username = db.Column(db.String(64) ,index=True,unique=True)
    fullname = db.Column(db.String(100) ,index=True,unique=True)
    email = db.Column(db.String(120) ,index=True,unique=True)

    def getJsonData(self):
        return {"username" : self.username , 
                "fullname" : self.fullname , 
                "email" : self.email }
    