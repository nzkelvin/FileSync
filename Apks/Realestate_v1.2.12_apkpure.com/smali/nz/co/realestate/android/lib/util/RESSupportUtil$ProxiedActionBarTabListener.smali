.class public Lnz/co/realestate/android/lib/util/RESSupportUtil$ProxiedActionBarTabListener;
.super Ljava/lang/Object;
.source "RESSupportUtil.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/util/RESSupportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxiedActionBarTabListener"
.end annotation


# instance fields
.field protected mActivity:Landroid/support/v4/app/FragmentActivity;

.field protected mListener:Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnz/co/realestate/android/lib/util/RESSupportUtil$ProxiedActionBarTabListener;->mListener:Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;

    .line 18
    iput-object p2, p0, Lnz/co/realestate/android/lib/util/RESSupportUtil$ProxiedActionBarTabListener;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 19
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportUtil$ProxiedActionBarTabListener;->mListener:Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;->onTabReselected(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportUtil$ProxiedActionBarTabListener;->mListener:Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;->onTabSelected(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportUtil$ProxiedActionBarTabListener;->mListener:Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;->onTabUnselected(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
