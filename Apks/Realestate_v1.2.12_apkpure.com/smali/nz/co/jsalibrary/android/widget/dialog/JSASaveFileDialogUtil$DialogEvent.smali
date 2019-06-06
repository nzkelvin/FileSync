.class public Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;
.super Lnz/co/jsalibrary/android/event/events/JSAEvent;
.source "JSASaveFileDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogEvent"
.end annotation


# static fields
.field protected static final EVENT_CANCEL:Ljava/lang/String; = "cancel"

.field protected static final EVENT_SAVE:Ljava/lang/String; = "save"


# instance fields
.field protected mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;Ljava/lang/String;)V
    .locals 0
    .param p1, "controller"    # Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/events/JSAEvent;-><init>()V

    .line 227
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;->mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    .line 228
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;->mType:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public getController()Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;->mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;->mType:Ljava/lang/String;

    return-object v0
.end method
