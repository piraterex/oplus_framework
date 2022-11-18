.class public final Landroid/view/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputWindowHandle$InputConfigFlags;
    }
.end annotation


# instance fields
.field public blacklist dispatchingTimeoutMillis:J

.field public blacklist displayId:I

.field public blacklist frameBottom:I

.field public blacklist frameLeft:I

.field public blacklist frameRight:I

.field public blacklist frameTop:I

.field public blacklist inputApplicationHandle:Landroid/view/InputApplicationHandle;

.field public blacklist inputConfig:I

.field public blacklist isClone:Z

.field public blacklist layoutParamsFlags:I

.field public blacklist layoutParamsType:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist ownerPid:I

.field public blacklist ownerUid:I

.field public blacklist packageName:Ljava/lang/String;

.field private blacklist ptr:J

.field public blacklist replaceTouchableRegionWithCrop:Z

.field public blacklist scaleFactor:F

.field public blacklist surfaceInset:I

.field public blacklist token:Landroid/os/IBinder;

.field public blacklist touchOcclusionMode:I

.field public final blacklist touchableRegion:Landroid/graphics/Region;

.field public blacklist touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist transform:Landroid/graphics/Matrix;

.field private blacklist window:Landroid/view/IWindow;

.field private blacklist windowToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputApplicationHandle;I)V
    .locals 2
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "displayId"    # I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 168
    iput-object p1, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 169
    iput p2, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 170
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputWindowHandle;)V
    .locals 3
    .param p1, "other"    # Landroid/view/InputWindowHandle;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 145
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 174
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/InputWindowHandle;->ptr:J

    .line 175
    new-instance v1, Landroid/view/InputApplicationHandle;

    iget-object v2, p1, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    invoke-direct {v1, v2}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    iput-object v1, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 176
    iget-object v1, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 177
    iget-object v1, p1, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    .line 178
    iget-object v1, p1, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    .line 179
    iget-object v1, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 180
    iget v1, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iput v1, p0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 181
    iget v1, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v1, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 182
    iget-wide v1, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iput-wide v1, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 183
    iget v1, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 184
    iget v1, p1, Landroid/view/InputWindowHandle;->frameTop:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameTop:I

    .line 185
    iget v1, p1, Landroid/view/InputWindowHandle;->frameRight:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 186
    iget v1, p1, Landroid/view/InputWindowHandle;->frameBottom:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 187
    iget v1, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    iput v1, p0, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 188
    iget v1, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iput v1, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 189
    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 190
    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 191
    iget v0, p1, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    iput v0, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 192
    iget v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 193
    iget v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 194
    iget-object v0, p1, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    .line 195
    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v0, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 196
    iget-object v0, p1, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 197
    iget-boolean v0, p1, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 198
    iget-object v0, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 200
    iget-object v1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 202
    :cond_0
    return-void
.end method

.method private native blacklist nativeDispose()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/view/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 224
    throw v0
.end method

.method public blacklist getWindow()Landroid/view/IWindow;
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    if-eqz v0, :cond_0

    .line 253
    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    .line 256
    return-object v0
.end method

.method public blacklist replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 237
    return-void
.end method

.method public blacklist setInputConfig(IZ)V
    .locals 2
    .param p1, "inputConfig"    # I
    .param p2, "value"    # Z

    .line 265
    if-eqz p2, :cond_0

    .line 266
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 267
    return-void

    .line 269
    :cond_0
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 270
    return-void
.end method

.method public blacklist setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 244
    return-void
.end method

.method public blacklist setWindowToken(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "iwindow"    # Landroid/view/IWindow;

    .line 247
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    .line 248
    iput-object p1, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    .line 249
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v1, ", frame=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->frameLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/InputWindowHandle;->frameTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->frameBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string v1, ", touchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string v1, ", windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string v1, ", isClone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InputWindowHandle;->isClone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method
