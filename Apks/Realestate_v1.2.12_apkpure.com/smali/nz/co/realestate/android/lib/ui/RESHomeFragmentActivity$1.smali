.class Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;
.super Ljava/lang/Object;
.source "RESHomeFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    packed-switch p2, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 157
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$raw;->realestate_terms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "terms":Ljava/lang/String;
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    sget v4, Lnz/co/realestate/android/lib/R$string;->terms_and_conditions:I

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->createFromHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->show()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 160
    .end local v1    # "terms":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$raw;->westpac_terms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1    # "terms":Ljava/lang/String;
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    sget v4, Lnz/co/realestate/android/lib/R$string;->terms_and_conditions:I

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->createFromHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->show()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 173
    .end local v1    # "terms":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
