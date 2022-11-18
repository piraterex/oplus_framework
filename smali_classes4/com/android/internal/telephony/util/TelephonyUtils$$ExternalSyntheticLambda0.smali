.class public final synthetic Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->lambda$runWithCleanCallingIdentity$0(Ljava/lang/Runnable;)V

    return-void
.end method
