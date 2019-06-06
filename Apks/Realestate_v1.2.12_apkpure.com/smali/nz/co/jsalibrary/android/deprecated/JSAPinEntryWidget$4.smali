.class Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$4;
.super Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;
    .param p2, "e"    # Landroid/widget/EditText;

    .prologue
    .line 192
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$4;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V

    return-void
.end method
