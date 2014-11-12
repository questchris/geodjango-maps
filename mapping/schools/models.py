from django.contrib.gis.db import models

class HighSchool(models.Model):
    name = models.CharField(max_length=255)
    fips = models.CharField('FIPS Code',
                            max_length=5,
                            unique=True,
                            primary_key=True)
    point = models.PointField()
    lon = models.FloatField('longitude')
    lat = models.FloatField('latitude')

    objects = models.GeoManager()

    def __str__(self):
        return self.name