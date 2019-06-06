.class public abstract Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;
.super Landroid/app/ListActivity;
.source "JSASherlockListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIncludeDebugOptionsMenuItems()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Lnz/co/jsalibrary/android/app/JSAApplication;

    if-nez v1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAApplication;

    .line 28
    .local v0, "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnz/co/jsalibrary/android/app/JSAApplication$Trojan;->registerActivityCreation(Lnz/co/jsalibrary/android/app/JSAApplication;Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 45
    .local v2, "show":Z
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getIncludeDebugOptionsMenuItems()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    .line 50
    .end local v2    # "show":Z
    .local v3, "show":I
    :goto_0
    return v3

    .line 46
    .end local v3    # "show":I
    .restart local v2    # "show":Z
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    instance-of v4, v4, Lnz/co/jsalibrary/android/app/JSAApplication;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lnz/co/jsalibrary/android/app/JSAApplication;

    move-object v0, v4

    .line 47
    .local v0, "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isDebug()Z

    move-result v1

    .line 48
    .local v1, "debug":Z
    :goto_2
    if-nez v1, :cond_3

    move v3, v2

    .restart local v3    # "show":I
    goto :goto_0

    .line 46
    .end local v0    # "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    .end local v1    # "debug":Z
    .end local v3    # "show":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 47
    .restart local v0    # "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->isDebugBuild(Landroid/content/Context;)Z

    move-result v1

    goto :goto_2

    .line 49
    .restart local v1    # "debug":Z
    :cond_3
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->onDebugCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    move v3, v2

    .line 50
    .restart local v3    # "show":I
    goto :goto_0

    .line 49
    .end local v3    # "show":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected onDebugCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->onDebugCreateOptionsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected onDebugOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/sherlock/util/JSASherlockActivityUtil;->onDebugOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getIncludeDebugOptionsMenuItems()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 72
    :goto_0
    return v3

    .line 68
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/app/JSAApplication;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/app/JSAApplication;

    move-object v0, v3

    .line 69
    .local v0, "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isDebug()Z

    move-result v1

    .line 70
    .local v1, "debug":Z
    :goto_2
    if-nez v1, :cond_3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 68
    .end local v0    # "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    .end local v1    # "debug":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    .restart local v0    # "application":Lnz/co/jsalibrary/android/app/JSAApplication;
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->isDebugBuild(Landroid/content/Context;)Z

    move-result v1

    goto :goto_2

    .line 71
    .restart local v1    # "debug":Z
    :cond_3
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockListActivity;->onDebugOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 72
    .local v2, "handled":Z
    if-nez v2, :cond_4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method
