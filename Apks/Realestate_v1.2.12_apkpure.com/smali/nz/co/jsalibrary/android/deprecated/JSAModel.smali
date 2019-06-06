.class public abstract Lnz/co/jsalibrary/android/deprecated/JSAModel;
.super Lnz/co/jsalibrary/android/deprecated/JSAModelBase;
.source "JSAModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/deprecated/JSAModel$Trojan;,
        Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;,
        Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;,
        Lnz/co/jsalibrary/android/deprecated/JSAModel$IgnoreEventMethods;,
        Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;,
        Lnz/co/jsalibrary/android/deprecated/JSAModel$Event;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;-><init>()V

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
    .line 135
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAModel$1;)V

    return-object v0
.end method

.method protected final getEventListener()Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;

    return-object v0
.end method

.method protected bridge synthetic getEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getEventListener()Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;

    move-result-object v0

    return-object v0
.end method
