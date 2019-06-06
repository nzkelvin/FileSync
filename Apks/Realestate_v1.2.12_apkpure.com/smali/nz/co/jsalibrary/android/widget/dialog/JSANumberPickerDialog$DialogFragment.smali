.class public Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.source "JSANumberPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARGUMENT_DISPLAYED_VALUES:Ljava/lang/String; = "displayed_values"

.field private static final ARGUMENT_MAX_VALUE:Ljava/lang/String; = "max_value"

.field private static final ARGUMENT_MIN_VALUE:Ljava/lang/String; = "min_value"

.field private static final ARGUMENT_SOFT_INPUT_ENABLED:Ljava/lang/String; = "soft_input_enabled"

.field private static final ARGUMENT_VALUE:Ljava/lang/String; = "value"

.field private static final ARGUMENT_WRAP_SELECTOR_WHEEL:Ljava/lang/String; = "wrap_selector_wheel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->create(Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "numberValues"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->create(Ljava/lang/String;[Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;[Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "numberValues"    # [Ljava/lang/String;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 196
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;-><init>()V

    .line 197
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 198
    const-string v1, "displayed_values"

    invoke-virtual {v0, v1, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    .line 199
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Landroid/os/Bundle;

    .line 200
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    return-object v0
.end method

.method public onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 204
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentTheme()I

    move-result v6

    .line 205
    .local v6, "theme":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentTitle()Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "title":Ljava/lang/String;
    const-string v9, "displayed_values"

    invoke-virtual {p0, v9}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v1, v9

    check-cast v1, [Ljava/lang/String;

    .line 207
    .local v1, "displayedValues":[Ljava/lang/String;
    const-string v9, "min_value"

    invoke-virtual {p0, v9, v10}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v5

    .line 208
    .local v5, "minValue":I
    const-string v9, "max_value"

    invoke-virtual {p0, v9, v10}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v4

    .line 209
    .local v4, "maxValue":I
    const-string v9, "value"

    invoke-virtual {p0, v9, v10}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v8

    .line 210
    .local v8, "value":I
    const-string v9, "wrap_selector_wheel"

    invoke-virtual {p0, v9, v10}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 211
    .local v2, "isSelectorWheelWrapped":Z
    const-string v9, "soft_input_enabled"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getArgumentBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    .local v3, "isSoftInputEnabled":Z
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    move-result-object v0

    .line 217
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    :goto_0
    invoke-virtual {v0, v5}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setMinValue(I)V

    .line 218
    invoke-virtual {v0, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setMaxValue(I)V

    .line 219
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setDisplayedValues([Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setWrapSelectorWheel(Z)V

    .line 221
    invoke-virtual {v0, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setSoftInputEnabled(Z)V

    .line 222
    invoke-virtual {v0, v8}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setValue(I)V

    .line 224
    return-object v0

    .line 215
    .end local v0    # "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v7, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    move-result-object v0

    .restart local v0    # "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    goto :goto_0
.end method

.method public setMaxValue(I)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p1, "maxValue"    # I

    .prologue
    .line 245
    const-string v0, "max_value"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 246
    return-object p0
.end method

.method public setMinValue(I)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p1, "minValue"    # I

    .prologue
    .line 236
    const-string v0, "min_value"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 237
    return-object p0
.end method

.method public setSoftInputEnabled(Z)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 272
    const-string v0, "soft_input_enabled"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 273
    return-object p0
.end method

.method public setValue(I)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 254
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 255
    return-object p0
.end method

.method public setWrapSelectorWheel(Z)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    .locals 1
    .param p1, "wrap"    # Z

    .prologue
    .line 263
    const-string v0, "wrap_selector_wheel"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 264
    return-object p0
.end method
