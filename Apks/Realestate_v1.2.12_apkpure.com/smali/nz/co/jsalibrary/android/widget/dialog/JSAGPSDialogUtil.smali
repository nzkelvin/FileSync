.class public final Lnz/co/jsalibrary/android/widget/dialog/JSAGPSDialogUtil;
.super Ljava/lang/Object;
.source "JSAGPSDialogUtil.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Your GPS is disabled, do you want to enable it?"

.field private static final DEFAULT_NO:Ljava/lang/String; = "No"

.field private static final DEFAULT_YES:Ljava/lang/String; = "Yes"

.field private static final REQUEST_CODE_ACTIVATE_GPS:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAlertDialogEnableGPS(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    const-string v0, "Your GPS is disabled, do you want to enable it?"

    const-string v1, "Yes"

    const-string v2, "No"

    invoke-static {p0, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAGPSDialogUtil;->buildAlertDialogEnableGPS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static buildAlertDialogEnableGPS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "yes"    # Ljava/lang/String;
    .param p3, "no"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSAGPSDialogUtil$2;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAGPSDialogUtil$2;-><init>(Landroid/app/Activity;)V

    .line 36
    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSAGPSDialogUtil$1;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAGPSDialogUtil$1;-><init>()V

    .line 43
    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
