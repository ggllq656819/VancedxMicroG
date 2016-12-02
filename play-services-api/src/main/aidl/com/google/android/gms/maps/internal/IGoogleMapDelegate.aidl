package com.google.android.gms.maps.internal;

import android.location.Location;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.internal.ICancelableCallback;
import com.google.android.gms.maps.internal.ILocationSourceDelegate;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.internal.IOnCameraChangeListener;
import com.google.android.gms.maps.internal.IOnCameraIdleListener;
import com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener;
import com.google.android.gms.maps.internal.IOnCameraMoveListener;
import com.google.android.gms.maps.internal.IOnCameraMoveStartedListener;
import com.google.android.gms.maps.internal.IOnMapClickListener;
import com.google.android.gms.maps.internal.IOnMapLongClickListener;
import com.google.android.gms.maps.internal.IOnMarkerClickListener;
import com.google.android.gms.maps.internal.IOnMarkerDragListener;
import com.google.android.gms.maps.internal.IOnInfoWindowClickListener;
import com.google.android.gms.maps.internal.IInfoWindowAdapter;
import com.google.android.gms.maps.internal.IOnMapLoadedCallback;
import com.google.android.gms.maps.internal.IOnMyLocationChangeListener;
import com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener;
import com.google.android.gms.maps.internal.ISnapshotReadyCallback;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.IPolygonDelegate;
import com.google.android.gms.maps.model.internal.IMarkerDelegate;
import com.google.android.gms.maps.model.internal.ICircleDelegate;
import com.google.android.gms.maps.model.internal.IGroundOverlayDelegate;
import com.google.android.gms.maps.model.internal.ITileOverlayDelegate;

interface IGoogleMapDelegate {
    CameraPosition getCameraPosition() = 0;

    float getMaxZoomLevel() = 1;
    float getMinZoomLevel() = 2;

    void moveCamera(IObjectWrapper cameraUpdate) = 3;
    void animateCamera(IObjectWrapper cameraUpdate) = 4;
    void animateCameraWithCallback(IObjectWrapper cameraUpdate, ICancelableCallback callback) = 5;
    void animateCameraWithDurationAndCallback(IObjectWrapper cameraUpdate, int duration, ICancelableCallback callback) = 6;
    void stopAnimation() = 7;

    IPolylineDelegate addPolyline(in PolylineOptions options) = 8;
    IPolygonDelegate addPolygon(in PolygonOptions options) = 9;
    IMarkerDelegate addMarker(in MarkerOptions options) = 10;
    IGroundOverlayDelegate addGroundOverlay(in GroundOverlayOptions options) = 11;
    ITileOverlayDelegate addTileOverlay(in TileOverlayOptions options) = 12;
    ICircleDelegate addCircle(in CircleOptions options) = 34;

    void clear() = 13;

    int getMapType() = 14;
    void setMapType(int type) = 15;
    boolean isTrafficEnabled() = 16;
    void setTrafficEnabled(boolean traffic) = 17;
    boolean isIndoorEnabled() = 18;
    void setIndoorEnabled(boolean indoor) = 19;

    boolean isMyLocationEnabled() = 20;
    void setMyLocationEnabled(boolean myLocation) = 21;
    Location getMyLocation() = 22;
    void setLocationSource(ILocationSourceDelegate locationSource) = 23;

    IUiSettingsDelegate getUiSettings() = 24;
    IProjectionDelegate getProjection() = 25;

    void setOnCameraChangeListener(IOnCameraChangeListener listener) = 26;
    void setOnMapClickListener(IOnMapClickListener listener) = 27;
    void setOnMapLongClickListener(IOnMapLongClickListener listener) = 28;
    void setOnMarkerClickListener(IOnMarkerClickListener listener) = 29;
    void setOnMarkerDragListener(IOnMarkerDragListener listener) = 30;
    void setOnInfoWindowClickListener(IOnInfoWindowClickListener listener) = 31;
    void setInfoWindowAdapter(IInfoWindowAdapter adapter) = 32;

    IObjectWrapper getTestingHelper() = 33;

    void setOnMyLocationChangeListener(IOnMyLocationChangeListener listener) = 35;
    void setOnMyLocationButtonClickListener(IOnMyLocationButtonClickListener listener) = 36;

    void snapshot(ISnapshotReadyCallback callback, IObjectWrapper bitmap) = 37;

    void setPadding(int left, int top, int right, int bottom) = 38;

    boolean isBuildingsEnabled() = 39;
    void setBuildingsEnabled(boolean buildings) = 40;

    void setOnMapLoadedCallback(IOnMapLoadedCallback callback) = 41;

    //IIndoorBuildingDelegate getIndoorBuilding() = 43;
    //void setIndoorStateChangeListener(IOnIndoorStateChangeListener listener) = 44;

    //void a(boolean a) = 50;

    //void setOnMapReadyCallback(IOnMapReadyCallback callback) = 52;

    //void setSnapshotReadyCallback(ISnapshotReadyCallback callback) = 70;

    //void setPoiClickListener(IOnPoiClickListener listener) = 79;

    //void setInfoWindowLongClickListener(IOnInfoWindowLongClickListener listener) = 83;
    //void setPolygonClickListener(IOnPolygonClickListener listener) = 84;
    //void setInfoWindowCloseListener(IOnInfoWindowCloseListener listener) = 85;
    //void setPolylineClickListener(IOnPolylineClickListener listener) = 86;
    //void setCircleClickListener(IOnCircleClickListener listener) = 88;

    //boolean setMapStyle(in MapStyleOptions options) = 90;

    //void setBounds(in LatLngBounds bounds) = 94;

    void setCameraMoveStartedListener(IOnCameraMoveStartedListener listener) = 95;
    void setCameraMoveListener(IOnCameraMoveListener listener) = 96;
    void setCameraMoveCanceledListener(IOnCameraMoveCanceledListener listener) = 97;
    void setCameraIdleListener(IOnCameraIdleListener listener) = 98;
}
