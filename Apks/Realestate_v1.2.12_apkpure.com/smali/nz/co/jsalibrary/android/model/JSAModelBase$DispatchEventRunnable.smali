.class public final Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;
.super Ljava/lang/Object;
.source "JSAModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSAModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DispatchEventRunnable"
.end annotation


# instance fields
.field protected final mModel:Lnz/co/jsalibrary/android/model/JSAModelBase;

.field protected final mPropertyName:Ljava/lang/String;

.field protected final mValue:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelBase;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Lnz/co/jsalibrary/android/model/JSAModelBase;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;->mModel:Lnz/co/jsalibrary/android/model/JSAModelBase;

    .line 165
    iput-object p2, p0, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;->mPropertyName:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;->mValue:Ljava/lang/Object;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;->mModel:Lnz/co/jsalibrary/android/model/JSAModelBase;

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;->mPropertyName:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
