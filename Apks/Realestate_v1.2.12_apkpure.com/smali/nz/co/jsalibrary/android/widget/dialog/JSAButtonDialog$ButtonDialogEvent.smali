.class public final Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;
.source "JSAButtonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonDialogEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_BUTTON:I = 0x12d


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;Ljava/lang/String;)V
    .locals 1
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .param p2, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    const/16 v0, 0x12d

    invoke-direct {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    .line 145
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;->mLabel:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;->mLabel:Ljava/lang/String;

    return-object v0
.end method
