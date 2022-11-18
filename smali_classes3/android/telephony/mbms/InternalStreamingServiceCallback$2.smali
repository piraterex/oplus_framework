.class Landroid/telephony/mbms/InternalStreamingServiceCallback$2;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onStreamStateUpdated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic blacklist val$reason:I

.field final synthetic blacklist val$state:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 63
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$state:I

    iput p3, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 66
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$state:I

    iget v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$reason:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/StreamingServiceCallback;->onStreamStateUpdated(II)V

    .line 67
    return-void
.end method
