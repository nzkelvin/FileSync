.class public final Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;
.source "JSAAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiChoiceDialogEvent"
.end annotation


# static fields
.field public static final EVENT_MULTI_CHOICE:Ljava/lang/String; = "multichoice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_TYPE_MULTI_CHOICE:I = 0xc9


# instance fields
.field private final mIsChecked:Z

.field private final mWhich:I


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;IZ)V
    .locals 2
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 572
    const/16 v0, 0xc9

    const-string v1, "multichoice"

    invoke-direct {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    .line 573
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;->mWhich:I

    .line 574
    iput-boolean p3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;->mIsChecked:Z

    .line 575
    return-void
.end method


# virtual methods
.method public getIsChecked()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;->mIsChecked:Z

    return v0
.end method

.method public getWhich()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;->mWhich:I

    return v0
.end method
