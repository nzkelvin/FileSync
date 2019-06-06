.class public final Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;
.super Ljava/lang/Object;
.source "JSAModelBaseSerialize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DispatchEventRunnable"
.end annotation


# instance fields
.field protected final mModel:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

.field protected final mPreventModelSave:Z

.field protected final mPropertyName:Ljava/lang/String;

.field protected final mRecordEvent:Z

.field protected final mValue:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 1
    .param p1, "model"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "preventModelSave"    # Z
    .param p5, "recordEvent"    # Z

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 682
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mModel:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    .line 683
    iput-object p2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mPropertyName:Ljava/lang/String;

    .line 684
    iput-object p3, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mValue:Ljava/lang/Object;

    .line 685
    iput-boolean p4, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mPreventModelSave:Z

    .line 686
    iput-boolean p5, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mRecordEvent:Z

    .line 687
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 690
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mModel:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mPropertyName:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mValue:Ljava/lang/Object;

    iget-boolean v3, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mPreventModelSave:Z

    iget-boolean v4, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;->mRecordEvent:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    .line 691
    return-void
.end method
