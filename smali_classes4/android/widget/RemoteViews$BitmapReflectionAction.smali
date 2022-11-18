.class Landroid/widget/RemoteViews$BitmapReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field greylist bitmap:Landroid/graphics/Bitmap;

.field greylist-max-o bitmapId:I

.field greylist methodName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1656
    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1657
    iput-object p4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    .line 1658
    iput p2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    .line 1659
    iput-object p3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    .line 1660
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    .line 1661
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1663
    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    .line 1665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    .line 1666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    .line 1667
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    .line 1668
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 1680
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    const/16 v4, 0xc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    .line 1683
    .local v0, "ra":Landroid/widget/RemoteViews$ReflectionAction;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 1684
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 1693
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 2
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 1688
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    .line 1689
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1672
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1674
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    return-void
.end method
