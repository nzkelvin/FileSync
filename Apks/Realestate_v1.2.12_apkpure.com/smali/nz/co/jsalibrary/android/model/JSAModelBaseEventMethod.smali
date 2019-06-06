.class abstract Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod;
.super Lnz/co/jsalibrary/android/model/JSAModelBase;
.source "JSAModelBaseEventMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventMethodContainer;,
        Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;-><init>(Z)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "isApplicationModel"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelBase;-><init>(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method protected final constructEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventListener;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$1;)V

    return-object v0
.end method

.method protected bridge synthetic getEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod;->getEventListener()Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventListener;

    move-result-object v0

    return-object v0
.end method

.method protected final getEventListener()Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventListener;
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod$ModelEventListener;

    return-object v0
.end method
