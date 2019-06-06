.class public final Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$SingleChoiceDialogEvent;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;
.source "JSAAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleChoiceDialogEvent"
.end annotation


# static fields
.field public static final EVENT_SINGLE_CHOICE:Ljava/lang/String; = "singlechoice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_TYPE_SINGLE_CHOICE:I = 0xca


# instance fields
.field private final mWhich:I


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;I)V
    .locals 2
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .param p2, "which"    # I

    .prologue
    .line 604
    const/16 v0, 0xca

    const-string v1, "singlechoice"

    invoke-direct {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    .line 605
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$SingleChoiceDialogEvent;->mWhich:I

    .line 606
    return-void
.end method


# virtual methods
.method public getWhich()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$SingleChoiceDialogEvent;->mWhich:I

    return v0
.end method
