.class public final Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchDelegateInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConnectionId:I

.field private blacklist mTargetMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/Region;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTargetMap(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->setConnectionId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->setWindowId(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6107
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/util/ArrayMap;Z)V
    .locals 2
    .param p2, "doCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/Region;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 6006
    .local p1, "targetMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/graphics/Region;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6007
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6008
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6007
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 6009
    if-eqz p2, :cond_1

    .line 6010
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    .line 6011
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_1

    .line 6013
    :cond_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    .line 6015
    :goto_1
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/graphics/Region;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 5987
    .local p1, "targetMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Region;Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5988
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5989
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5988
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5990
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    .line 5991
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 5992
    .local v1, "region":Landroid/graphics/Region;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5993
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5994
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 5995
    :cond_1
    return-void
.end method

.method private blacklist setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .line 6023
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mConnectionId:I

    .line 6024
    return-void
.end method

.method private blacklist setWindowId(I)V
    .locals 0
    .param p1, "windowId"    # I

    .line 6032
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mWindowId:I

    .line 6033
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 6087
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityIdForRegion(Landroid/graphics/Region;)J
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 6079
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRegionAt(I)Landroid/graphics/Region;
    .locals 1
    .param p1, "index"    # I

    .line 6052
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    return-object v0
.end method

.method public whitelist getRegionCount()I
    .locals 1

    .line 6041
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTargetForRegion(Landroid/graphics/Region;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 6066
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mWindowId:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6095
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6096
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6097
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 6098
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 6099
    .local v2, "accessibilityId":Ljava/lang/Long;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 6096
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "accessibilityId":Ljava/lang/Long;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6102
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
