.class public Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.source "JSADateTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALENDAR:Ljava/lang/String; = "calendar"

.field private static final INCLUDE_TIME:Ljava/lang/String; = "include_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->create(Ljava/lang/String;Ljava/util/Calendar;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Calendar;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 319
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/GregorianCalendar;

    .end local p1    # "calendar":Ljava/util/Calendar;
    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 320
    .restart local p1    # "calendar":Ljava/util/Calendar;
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->create(Ljava/lang/String;Ljava/util/Calendar;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Calendar;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "includeTime"    # Z

    .prologue
    .line 331
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/GregorianCalendar;

    .end local p1    # "calendar":Ljava/util/Calendar;
    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 332
    .restart local p1    # "calendar":Ljava/util/Calendar;
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->create(Ljava/lang/String;Ljava/util/Calendar;ZLnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Calendar;ZLnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "includeTime"    # Z
    .param p3, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 336
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/GregorianCalendar;

    .end local p1    # "calendar":Ljava/util/Calendar;
    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 337
    .restart local p1    # "calendar":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;-><init>()V

    .line 338
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 339
    const-string v1, "calendar"

    invoke-virtual {v0, v1, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    .line 340
    const-string v1, "include_time"

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 341
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Date;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    .end local p1    # "date":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 313
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 314
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 315
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->create(Ljava/lang/String;Ljava/util/Calendar;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;

    move-result-object v1

    return-object v1
.end method

.method public static create(Ljava/lang/String;Ljava/util/Date;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "includeTime"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    .end local p1    # "date":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 325
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 326
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 327
    invoke-static {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->create(Ljava/lang/String;Ljava/util/Calendar;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    return-object v0
.end method

.method public bridge synthetic getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 345
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getArgumentTheme()I

    move-result v3

    .line 346
    .local v3, "theme":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getArgumentTitle()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "title":Ljava/lang/String;
    const-string v5, "calendar"

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getArgumentSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 348
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v5, "include_time"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getArgumentBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 350
    .local v2, "includeTime":Z
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v1

    .line 352
    .local v1, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setDate(Ljava/util/Calendar;)V

    .line 353
    :cond_0
    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setIncludeTime(Z)V

    .line 354
    return-object v1

    .line 351
    .end local v1    # "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v1

    goto :goto_0
.end method
