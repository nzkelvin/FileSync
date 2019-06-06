.class public final Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$ItemDialogEvent;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;
.source "JSAAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemDialogEvent"
.end annotation


# static fields
.field public static final EVENT_ITEM:Ljava/lang/String; = "item"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_TYPE_ITEM:I = 0xcb


# instance fields
.field private final mWhich:I


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;I)V
    .locals 2
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .param p2, "which"    # I

    .prologue
    .line 630
    const/16 v0, 0xcb

    const-string v1, "item"

    invoke-direct {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    .line 631
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$ItemDialogEvent;->mWhich:I

    .line 632
    return-void
.end method


# virtual methods
.method public getWhich()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$ItemDialogEvent;->mWhich:I

    return v0
.end method
