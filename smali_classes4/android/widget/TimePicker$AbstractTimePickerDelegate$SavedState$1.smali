.class Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 559
    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 557
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 563
    new-array v0, p1, [Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 557
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;->newArray(I)[Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    move-result-object p1

    return-object p1
.end method
