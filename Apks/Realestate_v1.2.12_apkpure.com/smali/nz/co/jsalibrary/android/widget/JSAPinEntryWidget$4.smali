.class Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$4;
.super Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$CustomTextWatcher;
.source "JSAPinEntryWidget.java"


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
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;
    .param p2, "e"    # Landroid/widget/EditText;

    .prologue
    .line 180
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$4;->this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$CustomTextWatcher;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V

    return-void
.end method
