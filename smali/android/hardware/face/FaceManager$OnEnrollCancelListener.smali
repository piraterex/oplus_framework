.class Landroid/hardware/face/FaceManager$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field private final blacklist mAuthRequestId:J

.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/face/FaceManager;J)V
    .locals 0
    .param p2, "id"    # J

    .line 1179
    iput-object p1, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    iput-wide p2, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->mAuthRequestId:J

    .line 1181
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 3

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel face enrollment requested for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->mAuthRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->this$0:Landroid/hardware/face/FaceManager;

    iget-wide v1, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->mAuthRequestId:J

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$mcancelEnrollment(Landroid/hardware/face/FaceManager;J)V

    .line 1187
    return-void
.end method
