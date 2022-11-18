.class public final synthetic Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-static {p1}, Landroid/hardware/radio/ProgramList;->lambda$apply$4(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    return-void
.end method
