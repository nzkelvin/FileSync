.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RESPropertyDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 525
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    sget v3, Lnz/co/realestate/android/lib/R$string;->open_link:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 527
    const/4 v0, 0x1

    goto :goto_0
.end method
