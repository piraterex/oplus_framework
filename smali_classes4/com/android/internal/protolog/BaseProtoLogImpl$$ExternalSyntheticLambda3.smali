.class public final synthetic Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->lambda$logToProto$1(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
