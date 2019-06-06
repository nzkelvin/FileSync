.class public final Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;
.super Ljava/lang/Object;
.source "JSAModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DispatchEventRunnable"
.end annotation


# instance fields
.field protected final mModel:Lnz/co/jsalibrary/android/deprecated/JSAModelBase;

.field protected final mPropertyName:Ljava/lang/String;

.field protected final mValue:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAModelBase;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Lnz/co/jsalibrary/android/deprecated/JSAModelBase;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 161
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModelBase;

    .line 162
    iput-object p2, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;->mPropertyName:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;->mValue:Ljava/lang/Object;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModelBase;

    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;->mPropertyName:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 168
    return-void
.end method
