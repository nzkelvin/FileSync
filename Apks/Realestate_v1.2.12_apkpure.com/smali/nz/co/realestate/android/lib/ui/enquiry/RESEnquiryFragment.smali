.class public final Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESEnquiryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;
    }
.end annotation


# instance fields
.field private mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field private mMessageEditText:Landroid/widget/EditText;

.field private mNameEditText:Landroid/widget/EditText;

.field private mPhoneEditText:Landroid/widget/EditText;

.field private mPromotionalBanner:Landroid/view/View;

.field private mSendButton:Landroid/view/View;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->onSend()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->updateSendButton()V

    return-void
.end method

.method private addTextChangedListener(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/EditText;

    .prologue
    .line 78
    new-instance v0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$2;

    invoke-direct {v0, p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void
.end method

.method private onCompetitionRulesButtonClick()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://competition.realestate.co.nz/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lnz/co/realestate/android/lib/R$string;->competition_rules:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private onSend()V
    .locals 5

    .prologue
    .line 139
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mViewsInitialised:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;

    invoke-interface {v2}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;->onSendPressed()V

    .line 141
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mMessageEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mPhoneEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v1, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendAgentEnquiryRequestIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;)V

    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->isListingOnPromotion(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v1

    .line 118
    .local v1, "isListingOnPromotion":Z
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mPhoneEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 119
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAEmailUtil;->isEmailAddressValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 120
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mMessageEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 121
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    return-void

    .line 118
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 101
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mViewsInitialised:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->isListingOnPromotion(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v1

    .line 105
    .local v1, "isListingOnPromotion":Z
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mPromotionalBanner:Landroid/view/View;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 109
    .local v0, "agentValid":Z
    :goto_2
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v2, v4}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setVisibility(I)V

    .line 110
    if-eqz v0, :cond_3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    invoke-virtual {v4, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setAgent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V

    .line 113
    :cond_3
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->updateSendButton()V

    goto :goto_0

    .end local v0    # "agentValid":Z
    :cond_4
    move v2, v4

    .line 105
    goto :goto_1

    :cond_5
    move v0, v3

    .line 108
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->setRetainInstance(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->setHasOptionsMenu(Z)V

    .line 54
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->send_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mSendButton:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->agentdetails:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .line 56
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->promotional_banner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mPromotionalBanner:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->name_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mNameEditText:Landroid/widget/EditText;

    .line 58
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->phone_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mPhoneEditText:Landroid/widget/EditText;

    .line 59
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->email_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 60
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->message_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mMessageEditText:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mSendButton:Landroid/view/View;

    new-instance v1, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->addTextChangedListener(Landroid/widget/EditText;)V

    .line 69
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mPhoneEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->addTextChangedListener(Landroid/widget/EditText;)V

    .line 70
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->addTextChangedListener(Landroid/widget/EditText;)V

    .line 71
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mMessageEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->addTextChangedListener(Landroid/widget/EditText;)V

    .line 73
    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mViewsInitialised:Z

    .line 74
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->updateView()V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 161
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->isListingOnPromotion(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v0

    .line 162
    .local v0, "isListingOnPromotion":Z
    if-eqz v0, :cond_0

    sget v1, Lnz/co/realestate/android/lib/R$menu;->enquiry_menu:I

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    sget v0, Lnz/co/realestate/android/lib/R$layout;->enquiry_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->rules:I

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->onCompetitionRulesButtonClick()V

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 93
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_DETAILS_ENQUIRE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;

    .prologue
    .line 176
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;

    .line 177
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 1
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 129
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-ne p1, v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 131
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->updateView()V

    goto :goto_0
.end method
