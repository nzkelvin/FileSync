.class public final Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;
.super Landroid/widget/LinearLayout;
.source "RESAgentDetails.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

.field private mInflated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .prologue
    .line 33
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onContactClick()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->dialPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method private dialPhoneNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private inflate()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 128
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v2, Lnz/co/realestate/android/lib/R$layout;->agent_details:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mInflated:Z

    .line 131
    sget v2, Lnz/co/realestate/android/lib/R$id;->contact_textview:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "contactTextView":Landroid/widget/TextView;
    new-instance v2, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$1;-><init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private onContactClick()V
    .locals 8

    .prologue
    .line 146
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/R$string;->phone_digits:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "phoneFormat":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v6, v6, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->phone:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v6, v6, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->office_phone:Ljava/lang/String;

    aput-object v6, v4, v5

    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    .line 148
    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;

    invoke-direct {v4, p0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;-><init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    .local v0, "displayItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/R$string;->call_agent:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "title":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-class v4, Ljava/lang/String;

    .line 156
    invoke-static {v0, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    const/4 v6, -0x1

    new-instance v7, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;

    invoke-direct {v7, p0, v1}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;-><init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;Ljava/util/List;)V

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$4;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$4;-><init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;)V

    .line 161
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 165
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/R$string;->cancel:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$3;

    invoke-direct {v6, p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$3;-><init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    return-void
.end method

.method private updateView()V
    .locals 13

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 64
    iget-boolean v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mInflated:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->inflate()V

    .line 65
    :cond_0
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    if-nez v7, :cond_1

    .line 120
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v10, -0x1

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v10, -0x2

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setOrientation(I)V

    .line 71
    const v7, 0x106000b

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setBackgroundResource(I)V

    .line 72
    const/16 v7, 0xa

    invoke-virtual {p0, v8, v8, v8, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setPadding(IIII)V

    .line 75
    sget v7, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 76
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    const-string v10, "/pid/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    const-string v12, "/pid/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "/per_orgs/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->id:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo_md5:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    .line 79
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v7

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    invoke-virtual {v7, v3, v10, p0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadAgentImage(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 80
    invoke-static {v3}, Lnz/co/realestate/android/lib/core/RESImageLoader;->isImageLoading(Landroid/widget/ImageView;)Z

    move-result v7

    if-nez v7, :cond_8

    move v7, v8

    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_2
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    const-string v10, "/per_orgs/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://images16.realestate.co.nz/per_orgs/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo_md5:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    .line 85
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v7

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->photo:Ljava/lang/String;

    invoke-virtual {v7, v3, v10, p0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadAgentImage(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 86
    invoke-static {v3}, Lnz/co/realestate/android/lib/core/RESImageLoader;->isImageLoading(Landroid/widget/ImageView;)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_3
    sget v7, Lnz/co/realestate/android/lib/R$id;->logo_imageview:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 91
    .local v4, "logoImageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    const-string v10, "/pid/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 92
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    const-string v12, "/pid/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "/per_orgs/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->office_id:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo_md5:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    .line 94
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v7

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    invoke-virtual {v7, v4, v10, p0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadAgentLogo(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 95
    invoke-static {v4}, Lnz/co/realestate/android/lib/core/RESImageLoader;->isImageLoading(Landroid/widget/ImageView;)Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_4
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    const-string v10, "/per_orgs/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://images16.realestate.co.nz/per_orgs/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->office_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v11, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo_md5:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    .line 99
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v7

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->logo:Ljava/lang/String;

    invoke-virtual {v7, v4, v10, p0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadAgentImage(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 100
    invoke-static {v4}, Lnz/co/realestate/android/lib/core/RESImageLoader;->isImageLoading(Landroid/widget/ImageView;)Z

    move-result v7

    if-nez v7, :cond_b

    move v7, v8

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :cond_5
    sget v7, Lnz/co/realestate/android/lib/R$id;->name_textview:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 105
    .local v5, "nameTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->name:Ljava/lang/String;

    if-eqz v7, :cond_c

    move v7, v8

    :goto_5
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->name:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_6
    sget v7, Lnz/co/realestate/android/lib/R$id;->details_textview:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, "detailsTextView":Landroid/widget/TextView;
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v7, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->phone:Ljava/lang/String;

    aput-object v7, v1, v8

    const/4 v7, 0x1

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->office:Ljava/lang/String;

    aput-object v10, v1, v7

    const/4 v7, 0x2

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    iget-object v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->office_phone:Ljava/lang/String;

    aput-object v10, v1, v7

    .line 111
    .local v1, "details":[Ljava/lang/String;
    new-instance v7, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v7}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v1, v7}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v6

    .line 112
    .local v6, "validDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_d

    :goto_6
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "\n"

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_7
    const/4 v7, 0x4

    invoke-static {v2, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 117
    sget v7, Lnz/co/realestate/android/lib/R$id;->contact_textview:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, "contactTextView":Landroid/widget/TextView;
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lnz/co/realestate/android/lib/R$string;->call_agent_underlined:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v0    # "contactTextView":Landroid/widget/TextView;
    .end local v1    # "details":[Ljava/lang/String;
    .end local v2    # "detailsTextView":Landroid/widget/TextView;
    .end local v4    # "logoImageView":Landroid/widget/ImageView;
    .end local v5    # "nameTextView":Landroid/widget/TextView;
    .end local v6    # "validDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move v7, v9

    .line 80
    goto/16 :goto_1

    :cond_9
    move v7, v9

    .line 86
    goto/16 :goto_2

    .restart local v4    # "logoImageView":Landroid/widget/ImageView;
    :cond_a
    move v7, v9

    .line 95
    goto/16 :goto_3

    :cond_b
    move v7, v9

    .line 100
    goto/16 :goto_4

    .restart local v5    # "nameTextView":Landroid/widget/TextView;
    :cond_c
    move v7, v9

    .line 105
    goto :goto_5

    .restart local v1    # "details":[Ljava/lang/String;
    .restart local v2    # "detailsTextView":Landroid/widget/TextView;
    .restart local v6    # "validDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move v8, v9

    .line 112
    goto :goto_6
.end method


# virtual methods
.method public bridge synthetic onAppliedJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onAppliedJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public onAppliedJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V
    .locals 0
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 196
    return-void
.end method

.method public bridge synthetic onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 188
    return-void
.end method

.method public bridge synthetic onDesiredJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onDesiredJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public onDesiredJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V
    .locals 0
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 192
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onFailure(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V
    .locals 0
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 200
    return-void
.end method

.method public setAgent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V
    .locals 1
    .param p1, "agent"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    .prologue
    .line 54
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->mAgent:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    .line 56
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->updateView()V

    goto :goto_0
.end method
