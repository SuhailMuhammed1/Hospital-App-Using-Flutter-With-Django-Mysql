from rest_framework import serializers
from report.models import Report



class android_serialiser(serializers.ModelSerializer):
    class Meta:
        model=Report
        fields='__all__'