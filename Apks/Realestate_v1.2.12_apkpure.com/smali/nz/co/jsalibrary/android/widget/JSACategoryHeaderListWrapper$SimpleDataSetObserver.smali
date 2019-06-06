.class public Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "JSACategoryHeaderListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimpleDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;

    .prologue
    .line 223
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;->this$0:Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;->this$0:Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->notifyDataSetChanged()V

    .line 226
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;->this$0:Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->notifyDataSetChanged()V

    .line 229
    return-void
.end method
