.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    check-cast p1, Landroid/service/contentcapture/DataShareReadAdapter;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->lambda$start$0(Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/DataShareReadAdapter;)V

    return-void
.end method
