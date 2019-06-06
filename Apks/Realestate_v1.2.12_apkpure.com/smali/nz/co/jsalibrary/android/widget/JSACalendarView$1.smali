.class Lnz/co/jsalibrary/android/widget/JSACalendarView$1;
.super Ljava/lang/Object;
.source "JSACalendarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 211
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$1;->this$0:Lnz/co/jsalibrary/android/widget/JSACalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$1;->this$0:Lnz/co/jsalibrary/android/widget/JSACalendarView;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->onDayClick(II)V

    .line 214
    return-void
.end method
