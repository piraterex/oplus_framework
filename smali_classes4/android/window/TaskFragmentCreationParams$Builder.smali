.class public final Landroid/window/TaskFragmentCreationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "ownerToken"    # Landroid/os/IBinder;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    .line 164
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 165
    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    .line 166
    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    .line 167
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentCreationParams;
    .locals 5

    .line 186
    new-instance v0, Landroid/window/TaskFragmentCreationParams;

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/TaskFragmentCreationParams-IA;)V

    .line 188
    .local v0, "result":Landroid/window/TaskFragmentCreationParams;
    invoke-static {v0}, Landroid/window/TaskFragmentCreationParams;->-$$Nest$fgetmInitialBounds(Landroid/window/TaskFragmentCreationParams;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    iget v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    invoke-static {v0, v1}, Landroid/window/TaskFragmentCreationParams;->-$$Nest$fputmWindowingMode(Landroid/window/TaskFragmentCreationParams;I)V

    .line 190
    return-object v0
.end method

.method public blacklist setInitialBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 172
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 0
    .param p1, "windowingMode"    # I

    .line 179
    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    .line 180
    return-object p0
.end method
