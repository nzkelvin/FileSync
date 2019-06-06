.class Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "JSAMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSAMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/database/JSAMergeCursor;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/database/JSAMergeCursor;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/database/JSAMergeCursor;

    .prologue
    .line 26
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;->this$0:Lnz/co/jsalibrary/android/database/JSAMergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 28
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;->this$0:Lnz/co/jsalibrary/android/database/JSAMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->access$002(Lnz/co/jsalibrary/android/database/JSAMergeCursor;I)I

    .line 29
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;->this$0:Lnz/co/jsalibrary/android/database/JSAMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->access$102(Lnz/co/jsalibrary/android/database/JSAMergeCursor;I)I

    .line 33
    return-void
.end method
