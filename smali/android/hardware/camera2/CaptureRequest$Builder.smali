.class public final Landroid/hardware/camera2/CaptureRequest$Builder;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "template"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "reprocess"    # Z
    .param p3, "reprocessableSessionId"    # I
    .param p4, "logicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 831
    .local p5, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v7, Landroid/hardware/camera2/CaptureRequest;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest-IA;)V

    iput-object v7, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 834
    return-void
.end method


# virtual methods
.method public whitelist addTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .line 848
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmSurfaceSet(Landroid/hardware/camera2/CaptureRequest;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method

.method public whitelist build()Landroid/hardware/camera2/CaptureRequest;
    .locals 3

    .line 1001
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest-IA;)V

    return-object v0
.end method

.method public whitelist get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 889
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmLogicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraKey(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p2, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 947
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmPhysicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmPhysicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 948
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Physical camera id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isEmpty()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmLogicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist removeTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .line 859
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmSurfaceSet(Landroid/hardware/camera2/CaptureRequest;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 860
    return-void
.end method

.method public whitelist set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 875
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmLogicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 876
    return-void
.end method

.method public greylist setPartOfCHSRequestList(Z)V
    .locals 1
    .param p1, "partOfCHSList"    # Z

    .line 984
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fputmIsPartOfCHSRequestList(Landroid/hardware/camera2/CaptureRequest;Z)V

    .line 985
    return-void
.end method

.method public whitelist setPhysicalCameraKey(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .line 917
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmPhysicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fgetmPhysicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 924
    return-object p0

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Physical camera id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 970
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->-$$Nest$fputmUserTag(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)V

    .line 971
    return-void
.end method
