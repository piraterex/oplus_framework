.class public Landroid/window/ClientWindowFrames;
.super Ljava/lang/Object;
.source "ClientWindowFrames.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ClientWindowFrames;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist displayFrame:Landroid/graphics/Rect;

.field public final blacklist frame:Landroid/graphics/Rect;

.field public blacklist isParentFrameClippedByDisplayCutout:Z

.field public final blacklist parentFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroid/window/ClientWindowFrames$1;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames$1;-><init>()V

    sput-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0, p1}, Landroid/window/ClientWindowFrames;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ClientWindowFrames-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/ClientWindowFrames;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ClientWindowFrames;)V
    .locals 4
    .param p1, "other"    # Landroid/window/ClientWindowFrames;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 49
    iget-object v3, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 50
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    iget-boolean v0, p1, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    iput-boolean v0, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 65
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientWindowFrames{frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parentFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 80
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parentClippedByDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-boolean v0, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 73
    return-void
.end method
