.class public final Landroid/window/TaskFragmentCreationParams;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInitialBounds(Landroid/window/TaskFragmentCreationParams;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingMode(Landroid/window/TaskFragmentCreationParams;I)V
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Landroid/window/TaskFragmentCreationParams$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentCreationParams$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    .line 96
    sget-object v1, Landroid/window/TaskFragmentOrganizerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskFragmentOrganizerToken;

    iput-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    .line 99
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentCreationParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "ownerToken"    # Landroid/os/IBinder;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    .line 65
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 66
    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    .line 67
    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/TaskFragmentCreationParams-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFragmentToken()Landroid/os/IBinder;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInitialBounds()Landroid/graphics/Rect;
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getOrganizer()Landroid/window/TaskFragmentOrganizerToken;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist getOwnerToken()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 92
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentCreationParams{ organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ownerToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizerToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
