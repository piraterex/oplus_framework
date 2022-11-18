.class Landroid/app/SystemServiceRegistry$96;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/media/musicrecognition/MusicRecognitionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1165
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/musicrecognition/MusicRecognitionManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1168
    const-string/jumbo v0, "music_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1170
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionManager;

    .line 1171
    invoke-static {v0}, Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/musicrecognition/MusicRecognitionManager;-><init>(Landroid/media/musicrecognition/IMusicRecognitionManager;)V

    .line 1170
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$96;->createService(Landroid/app/ContextImpl;)Landroid/media/musicrecognition/MusicRecognitionManager;

    move-result-object p1

    return-object p1
.end method
