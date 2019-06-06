.class Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "JSAMergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardingDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;->this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;->this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;->this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->notifyDataSetInvalidated()V

    .line 250
    return-void
.end method
