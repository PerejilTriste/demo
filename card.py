# Form implementation generated from reading ui file 'card.ui'
#
# Created by: PyQt6 UI code generator 6.8.1
#
# WARNING: Any manual changes made to this file will be lost when pyuic6 is
# run again.  Do not edit this file unless you know what you are doing.

from data_types import Family
from PyQt6 import QtCore, QtGui, QtWidgets
from PyQt6.QtWidgets import QWidget


class FamilyCard(QWidget):

    def __init__(self, parent=None):
        super().__init__(parent)

    def setupUi(self, family: Family):
        self.person = QtWidgets.QLabel(parent=self)
        self.person.setGeometry(QtCore.QRect(10, 10, 300, 16))
        self.person.setObjectName("person")
        self.years = QtWidgets.QLabel(parent=self)
        self.years.setGeometry(QtCore.QRect(10, 30, 91, 16))
        self.years.setObjectName("years")
        self.position = QtWidgets.QLabel(parent=self)
        self.position.setGeometry(QtCore.QRect(10, 50, 111, 16))
        self.position.setObjectName("position")
        self.organization = QtWidgets.QLabel(parent=self)
        self.organization.setGeometry(QtCore.QRect(10, 70, 91, 16))
        self.organization.setObjectName("organization")
        self.salary = QtWidgets.QLabel(parent=self)
        self.salary.setGeometry(QtCore.QRect(10, 90, 111, 16))
        self.salary.setObjectName("salary")
        self.ratio = QtWidgets.QLabel(parent=self)
        self.ratio.setGeometry(QtCore.QRect(220, 20, 161, 16))
        self.ratio.setObjectName("ratio")

        self.retranslateUi(family)

    def retranslateUi(self, family: Family):
        _translate = QtCore.QCoreApplication.translate

        self.person.setText(str(family.person))
        self.years.setText(str(family.years_old))
        self.position.setText(str(family.position))
        self.organization.setText(family.organization)
        self.salary.setText(str(family.salary))
        self.ratio.setText(str(family.ratio))