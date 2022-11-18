.class public final synthetic Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/radio/ProgramSelector$Identifier;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/radio/ProgramSelector$Identifier;

    check-cast p1, Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramList;->lambda$putLocked$5(Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramList$ListCallback;)V

    return-void
.end method
