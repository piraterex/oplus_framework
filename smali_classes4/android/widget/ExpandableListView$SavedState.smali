.class Landroid/widget/ExpandableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/ExpandableListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o expandedGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1321
    new-instance v0, Landroid/widget/ExpandableListView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/ExpandableListView$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/ExpandableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1310
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1312
    const-class v1, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 1313
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/ExpandableListView$SavedState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1302
    .local p2, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1303
    iput-object p2, p0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1304
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1317
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1318
    iget-object v0, p0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1319
    return-void
.end method
