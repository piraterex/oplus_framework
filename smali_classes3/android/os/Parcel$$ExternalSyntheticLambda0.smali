.class public final synthetic Landroid/os/Parcel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Parcel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/os/Parcel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Landroid/os/Parcel;->lambda$createFixedArray$0(Ljava/lang/Class;I)[Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method
