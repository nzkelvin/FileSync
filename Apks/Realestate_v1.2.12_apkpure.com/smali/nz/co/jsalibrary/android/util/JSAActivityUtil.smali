.class public Lnz/co/jsalibrary/android/util/JSAActivityUtil;
.super Ljava/lang/Object;
.source "JSAActivityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "title"    # I

    .prologue
    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
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

    .line 72
    return-void
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "invalidateOptionsMenu"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "options menu could not be invalidated"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/util/JSAActivityUtil;

    aput-object v4, v3, v5

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "title"    # I

    .prologue
    .line 84
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 95
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
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

    goto :goto_0
.end method

.method public static onDebugCreateOptionsMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 43
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_application_info_bundle:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 44
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_database:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 45
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_preferences:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 46
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_configure_proxy:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 47
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAActivity_print_database_table:I

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->addDebugMenuItem(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 48
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

    .line 104
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_application_info_bundle:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->emailApplicationInfoBundle(Landroid/content/Context;)Z

    move v3, v4

    .line 126
    :cond_0
    :goto_0
    return v3

    .line 107
    :cond_1
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_database:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->emailDatabase(Landroid/content/Context;)Z

    move v3, v4

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_email_preferences:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->emailPreferences(Landroid/content/Context;)Z

    move v3, v4

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_configure_proxy:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    instance-of v3, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_4

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    move-object v1, v3

    .line 115
    .local v1, "fa":Landroid/support/v4/app/FragmentActivity;
    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->create(Landroid/content/Context;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->showNoCallback(Landroid/support/v4/app/FragmentActivity;)V

    :goto_2
    move v3, v4

    .line 117
    goto :goto_0

    .end local v1    # "fa":Landroid/support/v4/app/FragmentActivity;
    :cond_4
    move-object v1, v0

    .line 114
    goto :goto_1

    .line 116
    .restart local v1    # "fa":Landroid/support/v4/app/FragmentActivity;
    :cond_5
    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->create(Landroid/content/Context;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->show()V

    goto :goto_2

    .line 118
    .end local v1    # "fa":Landroid/support/v4/app/FragmentActivity;
    :cond_6
    sget v5, Lnz/co/jsalibrary/android/R$string;->JSAActivity_print_database_table:I

    invoke-static {p0, p1, v5}, Lnz/co/jsalibrary/android/util/JSAActivityUtil;->isDebugMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->getApplicationDatabaseHelpers(Landroid/app/Application;)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, "helpers":Ljava/util/List;, "Ljava/util/List<Landroid/database/sqlite/SQLiteOpenHelper;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    if-eqz v0, :cond_8

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil;->createPrintDatabaseTableDialog(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :goto_3
    move v3, v4

    .line 123
    goto :goto_0

    .line 122
    :cond_8
    sget v3, Lnz/co/jsalibrary/android/R$string;->JSAPrintDatabaseTableDialog_application_database_not_found:I

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method
