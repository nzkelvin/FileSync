.class Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$3;
.super Ljava/lang/Object;
.source "JSAPinEntryWidget.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$3;->this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$3;->this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->validatePin()V

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
