.class Landroid/speech/RecognitionService$StartListeningArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartListeningArgs"
.end annotation


# instance fields
.field public final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field public final greylist-max-o mIntent:Landroid/content/Intent;

.field public final greylist-max-o mListener:Landroid/speech/IRecognitionListener;

.field final synthetic blacklist this$0:Landroid/speech/RecognitionService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listener"    # Landroid/speech/IRecognitionListener;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;

    .line 213
    iput-object p1, p0, Landroid/speech/RecognitionService$StartListeningArgs;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    .line 215
    iput-object p3, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    .line 216
    iput-object p4, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mAttributionSource:Landroid/content/AttributionSource;

    .line 217
    return-void
.end method
