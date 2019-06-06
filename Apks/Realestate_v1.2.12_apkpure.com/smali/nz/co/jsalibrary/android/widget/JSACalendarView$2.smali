.class Lnz/co/jsalibrary/android/widget/JSACalendarView$2;
.super Ljava/lang/Object;
.source "JSACalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/JSACalendarView;->initialiseViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSACalendarView;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSACalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSACalendarView;

    .prologue
    .line 217
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$2;->this$0:Lnz/co/jsalibrary/android/widget/JSACalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$2;->this$0:Lnz/co/jsalibrary/android/widget/JSACalendarView;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->onPreviousMonthClick()V

    .line 220
    return-void
.end method
