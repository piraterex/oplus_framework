.class Landroid/media/AudioManager$1;
.super Ljava/util/HashMap;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 3
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 2450
    iput-object p1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2451
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioManager$DevRoleListeners;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/media/AudioManager$DevRoleListeners;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$DevRoleListeners-IA;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    return-void
.end method
