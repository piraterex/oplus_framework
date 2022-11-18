.class Landroid/view/DragEvent$1;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DragEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DragEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 607
    invoke-static {}, Landroid/view/DragEvent;->obtain()Landroid/view/DragEvent;

    move-result-object v0

    .line 608
    .local v0, "event":Landroid/view/DragEvent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mAction:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mX:F

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mY:F

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmOffsetX(Landroid/view/DragEvent;F)V

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmOffsetY(Landroid/view/DragEvent;F)V

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/view/DragEvent;->mDragResult:Z

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 617
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    sget-object v1, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipDescription;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 620
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 621
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmDragSurface(Landroid/view/DragEvent;Landroid/view/SurfaceControl;)V

    .line 623
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 624
    nop

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v1

    iput-object v1, v0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 627
    :cond_4
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 605
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/DragEvent;
    .locals 1
    .param p1, "size"    # I

    .line 631
    new-array v0, p1, [Landroid/view/DragEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 605
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->newArray(I)[Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method
