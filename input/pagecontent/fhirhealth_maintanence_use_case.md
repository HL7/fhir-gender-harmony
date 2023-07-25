<!-- Updates based on Jira tickets 
Date             Jira ticket        Updated by                   Comment



-->

#### FHIR Patient Example
The Health Maintenance Lab use case narrative was constructed to demonstrate the workflow of a transgender female patient who presents to her clinic needing an update of her demographic name, gender, and pronouns. The following is a FHIR example for the updating of the patient’s name, gender identity, and pronouns:

```
{
   "Patient": {
      "id": {
         "_value": "example"
      },
      "extension": [
         {
            "extension": [
               {
                  "valueCodeableConcept": {
                     "coding": {
                        "system": {
                           "_value": "http://snomed.info/sct"
                        },
                        "code": {
                           "_value": "446141000124107"
                        },
                        "display": {
                           "_value": "Identifies as female gender (finding)"
                        }
                     }
                  },
                  "_url": "value"
               },
               {
                  "valuePeriod": {
                     "start": {
                        "_value": "2022-08-01"
                     }
                  },
                  "_url": "period"
               },
               {
                  "valueCodeableConcept": {
                     "coding": {
                        "system": {
                           "_value": "http://snomed.info/sct"
                        },
                        "code": {
                           "_value": "446151000124109"
                        },
                        "display": {
                           "_value": "Identifies as male gender (finding)"
                        }
                     }
                  },
                  "_url": "value"
               },
               {
                  "valuePeriod": {
                     "end": {
                        "_value": "2022-07-31"
                     }
                  },
                  "_url": "period"
               }
            ],
            "_url": "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
         },
         {
            "extension": [
               {
                  "valueCodeableConcept": {
                     "coding": {
                        "system": {
                           "_value": "http://loinc.org"
                        },
                        "code": {
                           "_value": "LA29518-0"
                        },
                        "display": {
                           "_value": "he/him/his/his/himself"
                        }
                     }
                  },
                  "_url": "value"
               },
               {
                  "valuePeriod": {
                     "end": {
                        "_value": "2022-07-31"
                     }
                  },
                  "_url": "period"
               },
               {
                  "valueCodeableConcept": {
                     "coding": {
                        "system": {
                           "_value": "http://loinc.org"
                        },
                        "code": {
                           "_value": "LA29519-8"
                        },
                        "display": {
                           "_value": "she/her/her/hers/herself"
                        }
                     }
                  },
                  "_url": "value"
               },
               {
                  "valuePeriod": {
                     "start": {
                        "_value": "2022-08-01"
                     }
                  },
                  "_url": "period"
               }
            ],
            "_url": "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
         }
      ],
      "identifier": {
         "use": {
            "_value": "usual"
         },
         "type": {
            "coding": {
               "system": {
                  "_value": "http://terminology.hl7.org/CodeSystem/v2-0203"
               },
               "code": {
                  "_value": "MR"
               }
            }
         },
         "system": {
            "_value": "urn:oid:1.2.36.146.595.217.0.1"
         },
         "value": {
            "_value": "patientID1"
         },
         "period": {
            "start": {
               "_value": "2001-05-06"
            }
         }
      },
      "active": {
         "_value": "true"
      },
      "name": [
         {
            "use": {
               "_value": "usual"
            },
            "family": {
               "_value": "Smith"
            },
            "given": {
               "_value": "Jack"
            },
            "period": {
               "end": {
                  "_value": "2022-07-31"
               }
            }
         },
         {
            "use": {
               "_value": "usual"
            },
            "family": {
               "_value": "Smith"
            },
            "given": {
               "_value": "Julie"
            },
            "period": {
               "start": {
                  "_value": "2022-08-01"
               }
            }
         },
         {
            "use": {
               "_value": "nickname"
            },
            "given": {
               "_value": "Jack"
            },
            "period": {
               "end": {
                  "_value": "2022-07-31"
               }
            }
         },
         {
            "use": {
               "_value": "nickname"
            },
            "given": {
               "_value": "Julie"
            },
            "period": {
               "start": {
                  "_value": "2022-08-01"
               }
            }
         }
      ],
      "_xmlns": "http://hl7.org/fhir"
   }
}
```
#### FHIR ServiceRequest Example
Following the update of information, the patient is notified of the need for a health screening appointment. During the meeting with her physician, the examination of the patient’s prostate noted the presence of nodules. Due to this finding, a PSA is ordered for the patient using the Sex for Clinical Use as male with a note that the patient has a prostate. The following is a FHIR example for the service request for a PSA:

```
{
   "ServiceRequest": {
      "id": {
         "_value": "PSA"
      },
      "extension": [
         {
            "extension": [
               {
                  "valueCodeableConcept": {
                     "coding": {
                        "system": {
                           "_value": "http://terminology.hl7.org/CodeSystem/sex-for-clinical-use"
                        },
                        "code": {
                           "_value": "Male"
                        },
                        "display": {
                           "_value": "Specified sex for clinical use"
                        }
                     }
                  },
                  "_url": "value"
               },
               {
                  "valueString": {
                     "_value": "Patient has a prostate."
                  },
                  "_url": "comment"
               }
            ],
            "_url": "http://hl7.org/fhir/StructureDefinition/patient-sexForClinicalUse"
         }
      ],
      "identifier": {
         "type": {
            "coding": {
               "system": {
                  "_value": "http://terminology.hl7.org/CodeSystem/v2-0203"
               },
               "code": {
                  "_value": "PLAC"
               }
            },
            "text": {
               "_value": "Placer"
            }
         },
         "system": {
            "_value": "urn:oid:1.3.4.5.6.7"
         },
         "value": {
            "_value": "2345234234234"
         }
      },
      "status": {
         "_value": "active"
      },
      "intent": {
         "_value": "original-order"
      },
      "code": {
         "coding": {
            "system": {
               "_value": "http://loinc.org"
            },
            "code": {
               "_value": "2857-1"
            },
            "display": {
               "_value": "Prostate specific Ag [Mass/volume] in Serum or Plasma"
            }
         },
         "text": {
            "_value": "Prostate specific Ag [Mass/Vol]"
         }
      },
      "subject": {
         "reference": {
            "_value": "Patient/patientID1"
         },
         "display": {
            "_value": "Julie Smith"
         }
      },
      "encounter": {
         "reference": {
            "_value": "Encounter/example"
         }
      },
      "occurrenceDateTime": {
         "_value": "2022-08-15T18:01:00+01:00"
      },
      "requester": {
         "reference": {
            "_value": "Practitioner/example"
         }
      },
      "performer": {
         "reference": {
            "_value": "Practitioner/f005"
         }
      },
      "reasonCode": {
         "coding": {
            "system": {
               "_value": "http://hl7.org/fhir/sid/icd-10-cm"
            },
            "code": {
               "_value": "N40.2"
            },
            "display": {
               "_value": "Nodular prostate without lower urinary tract symptoms"
            }
         }
      },
      "_xmlns": "http://hl7.org/fhir"
   }
}
```

#### FHIR Observation Example
The PSA is performed and resulted. The following is a FHIR example for the observation of the PSA result:
```
{
   "Observation": {
      "id": {
         "_value": "f001"
      },
      "identifier": {
         "use": {
            "_value": "official"
         },
         "system": {
            "_value": "http://www.bmc.nl/zorgportal/identifiers/observations"
         },
         "value": {
            "_value": "6323"
         }
      },
      "status": {
         "_value": "final"
      },
      "code": {
         "coding": {
            "system": {
               "_value": "http://loinc.org"
            },
            "code": {
               "_value": "2857-1"
            },
            "display": {
               "_value": "Prostate specific Ag [Mass/volume] in Serum or Plasma"
            }
         }
      },
      "subject": {
         "reference": {
            "_value": "Patient/patientID1"
         },
         "display": {
            "_value": "Julie Smith"
         }
      },
      "issued": {
         "_value": "2022-08-15T17:45:00+01:00"
      },
      "performer": {
         "reference": {
            "_value": "Practitioner/f005"
         },
         "display": {
            "_value": "D. Jones"
         }
      },
      "valueQuantity": {
         "value": {
            "_value": "3.0"
         },
         "unit": {
            "_value": "ng/ml"
         },
         "system": {
            "_value": "http://unitsofmeasure.org"
         },
         "code": {
            "_value": "ng/ml"
         }
      },
      "interpretation": {
         "coding": {
            "system": {
               "_value": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
            },
            "code": {
               "_value": "N"
            },
            "display": {
               "_value": "Normal"
            }
         }
      },
      "note": {
         "text": {
            "_value": "Patients on testosterone suppressing medications, the upper limit of normal for the PSA should be reduced to 1.0 ng/ml."
         }
      },
      "referenceRange": {
         "low": {
            "value": {
               "_value": "0"
            },
            "unit": {
               "_value": "ng/ml"
            },
            "system": {
               "_value": "http://unitsofmeasure.org"
            },
            "code": {
               "_value": "ng/ml"
            }
         },
         "high": {
            "value": {
               "_value": "4.0"
            },
            "unit": {
               "_value": "ng/ml"
            },
            "system": {
               "_value": "http://unitsofmeasure.org"
            },
            "code": {
               "_value": "ng/ml"
            }
         }
      },
      "_xmlns": "http://hl7.org/fhir"
   }
}
```