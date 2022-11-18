.class public final Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
.super Landroid/util/SparseArray;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityWindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowListSparseArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Landroid/view/accessibility/AccessibilityWindowInfo;",
        ">;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 933
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 915
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 925
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->size()I

    move-result v0

    .line 926
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 928
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 929
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
