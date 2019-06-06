.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "RESPropertyInspectionNotesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Ljava/lang/String;",
        "Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;

    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_inspection_note_row:I

    invoke-direct {p0, v0, p1, v1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter;->updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;Ljava/lang/String;)V

    return-void
.end method

.method protected updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;->access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
