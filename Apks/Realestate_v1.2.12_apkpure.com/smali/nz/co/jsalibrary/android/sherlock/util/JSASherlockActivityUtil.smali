.class public Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;
.super Ljava/lang/Object;
.source "JSASherlockActivityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "title"    # I

    .prologue
    .line 45
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 57
    return-void
.end method

.method public static isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "title"    # I

    .prologue
    .line 69
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static onDebugCreateOptionsMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 28
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_application_info_bundle:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 29
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_database:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 30
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_preferences:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 31
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_configure_proxy:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 32
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_print_database_table:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 33
    return-void
.end method

.method public static onDebugOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 89
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_application_info_bundle:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->emailApplicationInfoBundle(Landroid/content/Context;)Z

    move v3, v4

    .line 111
    :cond_0
    :goto_0
    return v3

    .line 92
    :cond_1
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_database:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->emailDatabase(Landroid/content/Context;)Z

    move v3, v4

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_preferences:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->emailPreferences(Landroid/content/Context;)Z

    move v3, v4

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_configure_proxy:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 99
    instance-of v3, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_4

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    move-object v1, v3

    .line 100
    .local v1, "fa":Landroid/support/v4/app/FragmentActivity;
    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->create(Landroid/content/Context;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->showNoCallback(Landroid/support/v4/app/FragmentActivity;)V

    :goto_2
    move v3, v4

    .line 102
    goto :goto_0

    .end local v1    # "fa":Landroid/support/v4/app/FragmentActivity;
    :cond_4
    move-object v1, v0

    .line 99
    goto :goto_1

    .line 101
    .restart local v1    # "fa":Landroid/support/v4/app/FragmentActivity;
    :cond_5
    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->create(Landroid/content/Context;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->show()V

    goto :goto_2

    .line 103
    .end local v1    # "fa":Landroid/support/v4/app/FragmentActivity;
    :cond_6
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_print_database_table:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->getApplicationDatabaseHelpers(Landroid/app/Application;)Ljava/util/List;

    move-result-object v2

    .line 105
    .local v2, "helpers":Ljava/util/List;, "Ljava/util/List<Landroid/database/sqlite/SQLiteOpenHelper;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    if-eqz v0, :cond_8

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil;->createPrintDatabaseTableDialog(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :goto_3
    move v3, v4

    .line 108
    goto :goto_0

    .line 107
    :cond_8
    sget v3, Lnz/co/jsalibrary/android/R$string;->JSAPrintDatabaseTableDialog_application_database_not_found:I

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method
